require_relative 'base_view_converter'

module SjuiTools
  module SwiftUI
    module Views
      class IncludeConverter < BaseViewConverter
      def convert
        # includeプロパティからファイル名を取得
        include_path = @component['include']
        
        unless include_path
          raise "Include component must have 'include' property"
        end
        
        # ファイル名からビュー名を生成
        # included_1 -> Included1View, main_menu -> MainMenuView
        base_name = include_path.split('/').last
        view_name = base_name.split('_').map(&:capitalize).join + 'View'
        
        # パラメータを収集
        params = []
        
        # shared_dataとdataをマージ
        merged_data = {}
        
        # shared_dataを先に追加
        if @component['shared_data'] && @component['shared_data'].is_a?(Hash)
          merged_data.merge!(@component['shared_data'])
        end
        
        # dataで上書き
        if @component['data'] && @component['data'].is_a?(Hash)
          merged_data.merge!(@component['data'])
        end
        
        # マージしたデータがある場合はパラメータとして追加
        unless merged_data.empty?
          dict_content = process_data_hash(merged_data)
          params << "data: [#{dict_content}]"
        end
        
        # variablesの処理
        if @component['variables']
          add_line "// variables: #{@component['variables'].to_json}"
          # 将来的にはパラメータとして渡す
          # params << "variables: #{format_variables(@component['variables'])}"
        end
        
        # includeされたビューを呼び出し
        if params.empty?
          add_line "#{view_name}()"
        else
          add_line "#{view_name}(#{params.join(', ')})"
        end
        
        # 共通プロパティの適用
        apply_modifiers
        
        generated_code
      end
      
      private
      
      def process_data_hash(hash)
        hash.map { |key, value|
          formatted_value = format_value(value)
          "\"#{key}\": #{formatted_value}"
        }.join(", ")
      end
      
      def format_value(value)
        case value
        when String
          if value.match?(/@\{([^}]+)\}/)
            # @{xxx}形式の場合、変数参照として処理
            value.gsub(/@\{([^}]+)\}/) do |match|
              var_name = $1
              # this.をviewModel.data.に変換
              if var_name.start_with?('this.')
                var_name.gsub(/^this\./, 'viewModel.data.')
              else
                # this.がない場合もviewModel.data.を付ける
                "viewModel.data.#{var_name}"
              end
            end
          else
            # 通常の文字列
            "\"#{value}\""
          end
        when Hash
          # ネストされたHashの処理
          "[#{process_data_hash(value)}]"
        when Array
          # 配列の処理
          "[#{value.map { |v| format_value(v) }.join(", ")}]"
        when Numeric
          value.to_s
        when TrueClass, FalseClass
          value.to_s
        when NilClass
          "nil"
        else
          "\"#{value}\""
        end
      end
      end
    end
  end
end