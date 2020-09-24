.class Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;
.super Ljava/lang/Object;
.source "ColorSequentialAnimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->access$100(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->access$000(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 36
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->access$000(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    const-string v1, "ColorSequentialAnimController"

    if-eqz v0, :cond_0

    const-string v0, "next animation start"

    .line 37
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->access$000(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->access$100(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->getBlendColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->updateColor(I)V

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;->access$000(Lcom/coloros/systemui/keyguard/face/anim/ColorSequentialAnimController;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    goto :goto_0

    :cond_0
    const-string p0, "next only setImageDrawable"

    .line 43
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
