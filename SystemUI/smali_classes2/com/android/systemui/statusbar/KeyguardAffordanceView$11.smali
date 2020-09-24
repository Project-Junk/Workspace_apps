.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorOSThemeChanged()V
    .locals 2

    .line 631
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorOSThemeChanged()V

    .line 632
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isKeyguardIconShouldTint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 637
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void
.end method
