//******************************************************************************
//
// Copyright (c) Microsoft. All rights reserved.
//
// This code is licensed under the MIT License (MIT).
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//******************************************************************************

#import <TestFramework.h>
#import <Foundation/Foundation.h>
#import <CoreGraphics/DWriteWrapper.h>

TEST(DWriteWrapper, FontToFamilyName) {
    EXPECT_OBJCEQ(@"Arial", (id)_DWriteGetFamilyNameForFontName(CFSTR("Arial")));
    EXPECT_OBJCEQ(@"Arial", (id)_DWriteGetFamilyNameForFontName(CFSTR("Arial Italic")));
    EXPECT_OBJCEQ(@"Arial", (id)_DWriteGetFamilyNameForFontName(CFSTR("Arial Bold")));
    EXPECT_OBJCEQ(@"Arial", (id)_DWriteGetFamilyNameForFontName(CFSTR("Arial Bold Italic")));
    EXPECT_OBJCEQ(@"Arial", (id)_DWriteGetFamilyNameForFontName(CFSTR("Arial Black")));
    EXPECT_OBJCEQ(@"Times New Roman", (id)_DWriteGetFamilyNameForFontName(CFSTR("Times New Roman")));
    EXPECT_OBJCEQ(@"Times New Roman", (id)_DWriteGetFamilyNameForFontName(CFSTR("Times New Roman Italic")));
    EXPECT_OBJCEQ(@"Times New Roman", (id)_DWriteGetFamilyNameForFontName(CFSTR("Times New Roman Bold")));
    EXPECT_OBJCEQ(@"Times New Roman", (id)_DWriteGetFamilyNameForFontName(CFSTR("Times New Roman Bold Italic")));
    EXPECT_OBJCEQ(nil, (id)_DWriteGetFamilyNameForFontName(CFSTR("NotAFont")));
}

