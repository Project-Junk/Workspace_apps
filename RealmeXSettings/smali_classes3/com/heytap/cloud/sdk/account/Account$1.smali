.class final Lcom/heytap/cloud/sdk/account/Account$1;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/account/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/heytap/cloud/sdk/account/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/heytap/cloud/sdk/account/Account;
    .locals 1

    .line 23
    new-instance v0, Lcom/heytap/cloud/sdk/account/Account;

    invoke-direct {v0, p1}, Lcom/heytap/cloud/sdk/account/Account;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/account/Account$1;->createFromParcel(Landroid/os/Parcel;)Lcom/heytap/cloud/sdk/account/Account;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/heytap/cloud/sdk/account/Account;
    .locals 0

    .line 27
    new-array p1, p1, [Lcom/heytap/cloud/sdk/account/Account;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/account/Account$1;->newArray(I)[Lcom/heytap/cloud/sdk/account/Account;

    move-result-object p1

    return-object p1
.end method
