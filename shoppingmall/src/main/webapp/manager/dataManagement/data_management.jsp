<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<br>
<h1 align="center">물품등록 페이지</h1>
<br> 
 <table id="data_managementTable">
      <tr>
         <td align="center">상품코드</td>
         <td colspan="6">
            <input type="text" name="itemCode" id="itemCode" value="M">
            <div id="itemCodeDiv"></div>
         </td>
      </tr>

      <tr>
         <td align="center">상품명</td>
         <td colspan="6">
            <input type="text" name="itemName" id="itemName" size="70" placeholder="상품명 입력">
            <div id="itemNameDiv"></div>
         </td>
      </tr>

      <tr>
         <td align="center">판매 단가</td>
         <td colspan="2">
            <input type="text" name="salePrice" id="salePrice" placeholder="판매 단가 입력">
            <div id="salePriceDiv"></div>
         </td>
         
         <td colspan="2" align="center">상품 원가</td>
         <td colspan="2">
            <input type="text" name="costPrice" id="costPrice" placeholder="상품 원가 입력">
            <div id="costPriceDiv"></div>
         </td>
      </tr>

      <tr>
         <td align="center">색상/사이즈</td>
         <td width="60" align="center">S (90)</td>
         <td width="60" align="center">M (95)</td>
         <td width="60" align="center">L (100)</td>
         <td width="60" align="center">XL (105)</td>
         <td width="60" align="center">Free</td>
         <td width="60" align="center">Total</td>
      </tr>

      <tr>
         <td>
            <input type="text" name="col1" id="col1" list="col1List" placeholder="색상1 입력">
            <div id="col1Div"></div>
            <datalist id="col1List">
               <option value="black">
               <option value="white">
               <option value="navy">
               <option value="beige">
               <option value="charcoal">
            </datalist>
         </td>
         <td>
            <input type="text" name="col1s" id="col1s" list="col1sList" size="5" value="0">
            <div id="col1sDiv"></div> 
            <datalist id="col1sList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col1m" id="col1m" list="col1mList" size="5" value="0">
            <div id="col1mDiv"></div> 
            <datalist id="col1mList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col1l" id="col1l" list="col1lList" size="5" value="0">
            <div id="col1lDiv"></div> 
            <datalist id="col1lList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col1x" id="col1x" list="col1xList" size="5" value="0">
            <div id="col1xDiv"></div> 
            <datalist id="col1xList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td><input type="text" name="col1f" id="col1f" list="col1fList" size="5" value="0">
            <div id="col1fDiv"></div> 
            <datalist  id="col1fList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col1tot" id="col1tot" value="0" size="5" style="text-align: right;" readonly>
         </td>
      </tr>

      <tr>
         <td>
            <input type="text" name="col2" id="col2" list="col2List" placeholder="색상2 입력"> 
            <datalist id="col2List">
               <option value="black">
               <option value="white">
               <option value="navy">
               <option value="beige">
               <option value="charcoal">
            </datalist>
         </td>
         <td>
            <input type="text" name="col2s" id="col2s" list="col2sList" size="5" value="0"> 
            <datalist id="col2sList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col2m" id="col2m" list="col2mList" size="5" value="0"> 
            <datalist id="col2mList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col2l" id="col2l" list="col2lList" size="5" value="0"> 
            <datalist id="col2lList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col2x" id="col2x" list="col2xList" size="5" value="0"> 
            <datalist id="col2xList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col2f" id="col2f" list="col2fList" size="5" value="0"> 
            <datalist id="col2fList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col2tot" id="col2tot" value="0" size="5" style="text-align: right;" readonly>
         </td>
      </tr>

      <tr>
         <td>
            <input type="text" name="col3" id="col3"  list="col3List" placeholder="색상3 입력"> 
            <datalist id="col3List">
               <option value="black">
               <option value="white">
               <option value="navy">
               <option value="beige">
               <option value="charcoal">
            </datalist>
         </td>
         <td>
            <input type="text" name="col3s" id="col3s" list="col3sList" size="5" value="0"> 
            <datalist id="col3sList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col3m" id="col3m" list="col3mList" size="5" value="0"> 
            <datalist id="col3mList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col3l" id="col3l" list="col3lList" size="5" value="0"> 
            <datalist id="col3lList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col3x" id="col3x" list="col3xList" size="5" value="0"> 
            <datalist id="col3xList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col3f" id="col3f" list="col3fList" size="5" value="0"> 
            <datalist id="col3fList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col3tot" id="col3tot" value="0" size="5" style="text-align: right;"  readonly>
         </td>
      </tr>

      <tr>
         <td>
            <input type="text" name="col4" id="col4" list="col4List" placeholder="색상4 입력"> 
            <datalist id="col4List">
               <option value="black">
               <option value="white">
               <option value="navy">
               <option value="beige">
               <option value="charcoal">
            </datalist>
         </td>
         <td>
            <input type="text" name="col4s" id="col4s" list="col4sList" size="5" value="0"> 
            <datalist id="col4sList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col4m" id="col4m" list="col4mList" size="5" value="0"> 
            <datalist id="col4mList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col4l" id="col4l" list="col4lList" size="5" value="0"> 
            <datalist id="col4lList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col4x" id="col4x" list="col4xList" size="5" value="0"> 
            <datalist id="col4xList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col4f" id="col4f" list="col4fList" size="5" value="0"> 
            <datalist id="col4fList">
               <option value="10">
               <option value="20">
               <option value="30">
               <option value="40">
               <option value="50">
               <option value="100">
            </datalist>
         </td>
         <td>
            <input type="text" name="col4tot" id="col4tot" value="0" size="5" style="text-align: right;" readonly>
         </td>
      </tr>
      
      <tr>
         <td></td>
         <td>
            <input type="text" name="s" id="s" value="0" size="5" style="text-align: right;" readonly>
         </td>
         <td>
            <input type="text" name="m" id="m" value="0" size="5" style="text-align: right;" readonly>
         </td>
         <td>
            <input type="text" name="l" id="l" value="0" size="5" style="text-align: right;" readonly>
         </td>
         <td>
            <input type="text" name="x" id="x" value="0" size="5" style="text-align: right;" readonly>
         </td>
         <td>
            <input type="text" name="f" id="f" value="0" size="5" style="text-align: right;" readonly>
         </td>
         <td>
            <input type="text" name="totQty" id="totQty" value="0" size="5" style="text-align: right;" readonly>
         </td>
      </tr>

      <tr>
         <td align="center">내용</td>
         <td colspan="6"><textarea cols="70" rows="10" name="itemContent" id="itemContent" placeholder="내용 입력"></textarea>
         <div id="itemContentDiv"></div>
         </td>
      </tr>

      <tr>
         <td align="center">이미지1</td>
         <td colspan="6"><input type="file" name="img" id="img1"></td>
      </tr>

      <tr>
         <td align="center">이미지2</td>
         <td colspan="6"><input type="file" name="img" id="img2"></td>
      </tr>

      <tr>
         <td align="center">이미지3</td>
         <td colspan="6"><input type="file" name="img" id="img3"></td>
      </tr>

      <tr>
         <td align="center">이미지4</td>
         <td colspan="6"><input type="file" name="img" id="img4"></td>
      </tr>
      
      <tr>
         <td align="center">키워드</td>
         <td colspan="6">
            <input type="text" name="itemKeyword" id="itemKeyword" size="70" placeholder="키워드 입력">
            <div id="itemKeywordDiv"></div>
         </td>
      </tr>

      <tr>
         <td colspan="7" align="center">
            <input type="button" value="상품 등록" id="itemboardWriteBtn"> 
            <input type="reset" value="다시작성">
         </td>
      </tr>
   </table>