.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/system/AssistDataReceiver;Lcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field final synthetic val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/AssistDataReceiver;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
