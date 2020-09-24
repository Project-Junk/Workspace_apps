.class public Lcom/oppo/servicesdk/WeatherRequest;
.super Ljava/lang/Object;
.source "WeatherRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/servicesdk/WeatherRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "REQUEST"


# instance fields
.field private mCallMethodName:Ljava/lang/String;

.field private mOSVersion:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/oppo/servicesdk/WeatherRequest$1;

    invoke-direct {v0}, Lcom/oppo/servicesdk/WeatherRequest$1;-><init>()V

    sput-object v0, Lcom/oppo/servicesdk/WeatherRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mParams:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mParams:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mRequestID:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mCallMethodName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mPackageName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mOSVersion:Ljava/lang/String;

    .line 31
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/servicesdk/WeatherRequest;->mParams:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallMethodName()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mCallMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mOSVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRequestID()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mRequestID:Ljava/lang/String;

    return-object p0
.end method

.method public setCallMethodName(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oppo/servicesdk/WeatherRequest;->mCallMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public setOSVersion(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/servicesdk/WeatherRequest;->mOSVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/oppo/servicesdk/WeatherRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setParams(Ljava/util/ArrayList;)Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oppo/servicesdk/WeatherRequest;"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/oppo/servicesdk/WeatherRequest;->mParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setRequestID(Ljava/lang/String;)Lcom/oppo/servicesdk/WeatherRequest;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oppo/servicesdk/WeatherRequest;->mRequestID:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget-object p2, p0, Lcom/oppo/servicesdk/WeatherRequest;->mRequestID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/oppo/servicesdk/WeatherRequest;->mCallMethodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/oppo/servicesdk/WeatherRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/oppo/servicesdk/WeatherRequest;->mOSVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/oppo/servicesdk/WeatherRequest;->mParams:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
