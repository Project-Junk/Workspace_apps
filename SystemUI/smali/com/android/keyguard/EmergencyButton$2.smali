.class Lcom/android/keyguard/EmergencyButton$2;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 166
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnClickEmergencyButton(Landroid/content/Context;)V

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$2;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    return-void
.end method
