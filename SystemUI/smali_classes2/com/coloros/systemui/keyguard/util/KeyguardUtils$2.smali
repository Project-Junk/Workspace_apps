.class final Lcom/coloros/systemui/keyguard/util/KeyguardUtils$2;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/util/KeyguardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x1

    .line 169
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->setStatusBarShow(Z)V

    return-void
.end method
