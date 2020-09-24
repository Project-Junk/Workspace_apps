.class final Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;
.super Ljava/lang/Object;
.source "BRPluginConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 2

    .line 159
    new-instance v0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->access$102(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->access$202(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 0

    .line 167
    new-array p1, p1, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig$1;->newArray(I)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object p1

    return-object p1
.end method
