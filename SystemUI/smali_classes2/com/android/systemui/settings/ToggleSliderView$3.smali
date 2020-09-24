.class Lcom/android/systemui/settings/ToggleSliderView$3;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 272
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$600(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 274
    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$700(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$600(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 273
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    .line 275
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return v1

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSliderView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setEnabled(Z)V

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$800(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getWidth()I

    move-result v2

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_b

    if-eq v3, v1, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 p1, 0x3

    if-eq v3, p1, :cond_9

    const/4 p0, 0x4

    goto/16 :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 290
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$900(Lcom/android/systemui/settings/ToggleSliderView;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSliderView;->access$900(Lcom/android/systemui/settings/ToggleSliderView;)F

    move-result v3

    :goto_1
    sub-float/2addr p1, v3

    .line 291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSliderView;->access$1000(Lcom/android/systemui/settings/ToggleSliderView;)F

    move-result v3

    sub-float/2addr p2, v3

    .line 292
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v3, p2

    if-gtz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 293
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 294
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2, v1}, Lcom/android/systemui/settings/ToggleSliderView;->access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 295
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 296
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v5, 0x1

    invoke-static {v4}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 297
    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v7

    const/4 v8, 0x0

    .line 296
    invoke-interface/range {v3 .. v8}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 299
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 300
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 301
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v3}, Lcom/android/systemui/settings/ToggleSliderView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    .line 305
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result p2

    int-to-float p2, p2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 306
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->access$1100(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result v2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p1, v2

    .line 307
    iget-object p2, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p2

    if-lez p1, :cond_8

    goto :goto_2

    :cond_8
    move p1, v0

    :goto_2
    invoke-virtual {p2, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 313
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$202(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    .line 314
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 315
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 316
    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v6

    const/4 v7, 0x1

    .line 315
    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 318
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 319
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$500(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    goto :goto_3

    .line 285
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$902(Lcom/android/systemui/settings/ToggleSliderView;F)F

    .line 286
    iget-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/settings/ToggleSliderView;->access$1002(Lcom/android/systemui/settings/ToggleSliderView;F)F

    .line 287
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSliderView$3;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->access$1102(Lcom/android/systemui/settings/ToggleSliderView;I)I

    :cond_c
    :goto_3
    return v1
.end method
