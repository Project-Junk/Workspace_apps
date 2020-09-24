.class final Lcom/oppo/servicesdk/WeatherRequest$1;
.super Ljava/lang/Object;
.source "WeatherRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/servicesdk/WeatherRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oppo/servicesdk/WeatherRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0

    .line 62
    new-instance p0, Lcom/oppo/servicesdk/WeatherRequest;

    invoke-direct {p0, p1}, Lcom/oppo/servicesdk/WeatherRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oppo/servicesdk/WeatherRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oppo/servicesdk/WeatherRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0

    .line 67
    new-array p0, p1, [Lcom/oppo/servicesdk/WeatherRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/oppo/servicesdk/WeatherRequest$1;->newArray(I)[Lcom/oppo/servicesdk/WeatherRequest;

    move-result-object p0

    return-object p0
.end method
