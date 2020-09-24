.class public Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;
.super Ljava/lang/Object;
.source "CityInfoLocal.java"


# instance fields
.field private mAttendId:I

.field private mCityCode:Ljava/lang/String;

.field private mCityCountry:Ljava/lang/String;

.field private mCityCountryEnglish:Ljava/lang/String;

.field private mCityId:I

.field private mCityIsAttend:Z

.field private mCityName:Ljava/lang/String;

.field private mCityNameEn:Ljava/lang/String;

.field private mCityNameTw:Ljava/lang/String;

.field private mCityParent:Ljava/lang/String;

.field private mCityParentEn:Ljava/lang/String;

.field private mCityProvince:Ljava/lang/String;

.field private mCityProvinceEnglish:Ljava/lang/String;

.field private transient mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mDualClockScreenSwitch:I

.field private mDualClockSwitch:I

.field private mDualClockWidgetSwitch:I

.field private mIsNewCityCode:I

.field private mIsValid:Z

.field private mLocale:Ljava/lang/String;

.field private mSort:I

.field private mTimeZone:Ljava/lang/String;

.field private mTimezoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    return-void
.end method

.method public constructor <init>(Lcom/coloros/a/a;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    if-eqz p1, :cond_2

    .line 1164
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "i_attend_city"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    iput v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mAttendId:I

    .line 1172
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "i_city_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    iput v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityId:I

    .line 2068
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_location_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCode:Ljava/lang/String;

    .line 2076
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_city_name_local"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    .line 2084
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_city_name_en"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    .line 2180
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_city_name_tw"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameTw:Ljava/lang/String;

    .line 3092
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_local_language"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    .line 3124
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_country_name_local"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountry:Ljava/lang/String;

    .line 4116
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_country_name_en"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountryEnglish:Ljava/lang/String;

    .line 4156
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_parent_city_name_local"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityParent:Ljava/lang/String;

    .line 5148
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_parent_city_name_en"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityParentEn:Ljava/lang/String;

    .line 6140
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_province_name_local"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvince:Ljava/lang/String;

    .line 7132
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "s_province_name_en"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvinceEnglish:Ljava/lang/String;

    .line 7356
    iget-object v1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v2, "b_city_is_attend"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityIsAttend:Z

    .line 74
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    .line 8212
    iget-object v0, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v1, "i_sort"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    iput v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mSort:I

    .line 8260
    iget-object v0, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v1, "s_timezone_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9236
    iget-object p1, p1, Lcom/coloros/a/a;->a:Landroid/os/Bundle;

    const-string v0, "s_timezone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimeZone:Ljava/lang/String;

    return-void

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    .line 10029
    invoke-static {p1}, Lcom/coloros/settings/feature/weather/a/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimeZone:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mContext:Landroid/content/Context;

    const/4 p4, 0x1

    .line 35
    iput-boolean p4, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    .line 88
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCode:Ljava/lang/String;

    .line 91
    iput p6, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCurrent:I

    .line 92
    iput p7, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mSort:I

    .line 93
    iput-object p10, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    .line 94
    iput-boolean p4, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    .line 95
    iput-object p11, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    .line 11029
    invoke-static {p10}, Lcom/coloros/settings/feature/weather/a/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimeZone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCountry()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCountryEn()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountryEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityId:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/weather/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    return-object v0

    .line 195
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    return-object v0
.end method

.method public getCityNameEn()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    return-object v0
.end method

.method public getCityNameLocal()Ljava/lang/String;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/weather/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCityNameTw()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameTw:Ljava/lang/String;

    return-object v0
.end method

.method public getCityParent()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityParent:Ljava/lang/String;

    return-object v0
.end method

.method public getCityParentEn()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityParentEn:Ljava/lang/String;

    return-object v0
.end method

.method public getCityProvince()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getCityProvinceEn()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvinceEnglish:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCurrent:I

    return v0
.end method

.method public getDualClockScreenSwitch()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockScreenSwitch:I

    return v0
.end method

.method public getDualClockSwitch()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockSwitch:I

    return v0
.end method

.method public getDualClockWidgetSwitch()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockWidgetSwitch:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mAttendId:I

    return v0
.end method

.method public getIsNewCityCode()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsNewCityCode:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mSort:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezoneId()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public isExist()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityIsAttend:Z

    return v0
.end method

.method public isLocalCity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    return v0
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method public setCityCountryEn(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountryEnglish:Ljava/lang/String;

    return-void
.end method

.method public setCityId(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityId:I

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    return-void
.end method

.method public setCityNameEn(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    return-void
.end method

.method public setCityNameTw(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameTw:Ljava/lang/String;

    return-void
.end method

.method public setCityProvinceEnglish(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvinceEnglish:Ljava/lang/String;

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCurrent:I

    return-void
.end method

.method public setDualClockScreenSwitch(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockScreenSwitch:I

    return-void
.end method

.method public setDualClockSwitch(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockSwitch:I

    return-void
.end method

.method public setDualClockWidgetSwitch(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockWidgetSwitch:I

    return-void
.end method

.method public setExist(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityIsAttend:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mAttendId:I

    return-void
.end method

.method public setIsNewCityCode(I)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsNewCityCode:I

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mSort:I

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setTimezoneId(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CityInfoLocal{mAttendId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mAttendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityNameEn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameEn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityNameTw=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityNameTw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCurrent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSort="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mSort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTimeZone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIsValid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mIsValid:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLocale=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTimezoneId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mTimezoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityParent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityParent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityParentEn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityParentEn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityProvince=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvince:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityProvinceEnglish=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityProvinceEnglish:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityCountry=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCityCountryEnglish=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityCountryEnglish:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCityIsAttend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mCityIsAttend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDualClockSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDualClockScreenSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockScreenSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDualClockWidgetSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->mDualClockWidgetSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
