.class public Lcom/platform/usercenter/common/lib/BaseApp;
.super Ljava/lang/Object;
.source "BaseApp.java"


# static fields
.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "init context is null"

    .line 25
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    sput-object p0, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->init(Landroid/content/Context;)V

    return-void
.end method
