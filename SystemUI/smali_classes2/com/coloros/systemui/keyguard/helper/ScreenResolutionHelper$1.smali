.class Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper$1;
.super Ljava/lang/Object;
.source "ScreenResolutionHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper$1;->this$0:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper$1;->this$0:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->access$000(Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;)V

    return-void
.end method
