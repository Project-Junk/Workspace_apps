.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$2;
.super Ljava/lang/Object;
.source "PictorialFunctionContainer.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictorialPreloadViewLoad(Z)V
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictorialPreloadViewLoad success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialFunctionContainer"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$502(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;Z)Z

    .line 556
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer$2;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;->access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;)V

    return-void
.end method
