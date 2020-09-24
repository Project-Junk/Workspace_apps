.class public Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;
.super Ljava/lang/Object;
.source "UCLogoutTransferEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_WHAT_REQUEST_DATA_NULL:I = 0x1fa

.field public static final ERROR_WHAT_REQUEST_MODULE_ISNEED_VERIFY_PWD:I = 0x2a4

.field public static final KEY_EXTRA_REQUEST_ENTITY:Ljava/lang/String; = "KEY_EXTRA_REQUEST_ENTITY"

.field public static final KEY_EXTRA_REQUEST_PACKAGENAME:Ljava/lang/String; = "KEY_EXTRA_REQUEST_PACKAGENAME"

.field public static final KEY_REPLY_MSG_BUNDLE_RESULT_ISNEED_VRRIFYPWD:Ljava/lang/String; = "REPLY_MSG_BUNDLE_RESULT_ISNEED_VRRIFYPWD"

.field public static final KEY_REPLY_MSG_BUNDLE_RESULT_LOGOUT_ISSUCCESS:Ljava/lang/String; = "REPLY_MSG_BUNDLE_RESULT_LOGOUT_TICKETNO_ISSUCCESS"

.field public static final KEY_SEND_MSG_BUNDLE_REQUEST_LOGOUT_TICKETNO:Ljava/lang/String; = "SEND_MSG_BUNDLE_REQUEST_LOGOUT_TICKETNO"

.field public static final TYPE_REQUEST_IS_NEED_VERIFY_PWD:Ljava/lang/String; = "TYPE_REQUEST_IS_NEED_VERIFY_PWD"

.field public static final TYPE_REQUEST_REQUEST_LOGOUT:Ljava/lang/String; = "TYPE_REQUEST_REQUEST_LOGOUT"


# instance fields
.field public bundle:Landroid/os/Bundle;

.field private discription:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity$1;

    invoke-direct {v0}, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity$1;-><init>()V

    sput-object v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->pkgName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    const-string p1, "TYPE_REQUEST_IS_NEED_VERIFY_PWD"

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "request is open or if need verify pwd"

    .line 45
    iput-object p1, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->discription:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "TYPE_REQUEST_REQUEST_LOGOUT"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "request to logout and close after verify ticketNo"

    .line 47
    iput-object p1, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->discription:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->discription:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->pkgName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    if-nez v1, :cond_1

    return v0

    .line 79
    :cond_1
    check-cast p1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    .line 80
    iget-object v1, p1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->discription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
