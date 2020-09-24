.class final Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo$1;
.super Ljava/lang/Object;
.source "AttendWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;
    .locals 0

    .line 47
    new-instance p0, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;

    invoke-direct {p0, p1}, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;
    .locals 0

    .line 51
    new-array p0, p1, [Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo$1;->newArray(I)[Lcom/oppo/weatherservicesdk/model/AttendWeatherInfo;

    move-result-object p0

    return-object p0
.end method
