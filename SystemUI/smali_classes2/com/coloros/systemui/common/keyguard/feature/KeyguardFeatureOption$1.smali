.class final Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption$1;
.super Ljava/lang/Object;
.source "KeyguardFeatureOption.java"

# interfaces
.implements Lcom/coloros/common/util/LogUtil$IDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->loadFeatureOption(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugInfo()Ljava/lang/String;
    .locals 0

    .line 221
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->access$000()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
