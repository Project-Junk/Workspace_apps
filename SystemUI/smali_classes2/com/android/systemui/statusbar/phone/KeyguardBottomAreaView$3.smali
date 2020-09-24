.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;
.super Landroid/os/AsyncTask;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    .line 564
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const/16 v2, -0x60

    .line 575
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v3, 0x1

    .line 576
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v3, 0x3

    .line 577
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 582
    :try_start_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->IS_SUPPORT_SIDE_FINGERPRINT:Z

    if-eqz v3, :cond_0

    .line 584
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 586
    :cond_0
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 590
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 592
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x10000000

    const/4 v14, 0x0

    .line 593
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 594
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    .line 589
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "StatusBar/KeyguardBottomAreaView"

    const-string v4, "Unable to start camera activity"

    .line 596
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$800(I)Z

    move-result v0

    .line 599
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
