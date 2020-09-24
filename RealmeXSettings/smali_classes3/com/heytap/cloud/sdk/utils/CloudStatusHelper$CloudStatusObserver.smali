.class public abstract Lcom/heytap/cloud/sdk/utils/CloudStatusHelper$CloudStatusObserver;
.super Landroid/database/ContentObserver;
.source "CloudStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/utils/CloudStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CloudStatusObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public abstract onChange(Ljava/lang/String;)V
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 315
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 316
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/utils/CloudStatusHelper$CloudStatusObserver;->onChange(Ljava/lang/String;)V

    return-void
.end method
