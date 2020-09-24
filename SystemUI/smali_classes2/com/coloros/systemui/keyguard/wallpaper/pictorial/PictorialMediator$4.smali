.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$4;
.super Landroid/database/ContentObserver;
.source "PictorialMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 478
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "PictorialMediator"

    const-string v0, "mPictorialMessageViewObserver onChange"

    .line 479
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$4;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->obtainPictorialMessageViewInfo()V

    return-void
.end method
