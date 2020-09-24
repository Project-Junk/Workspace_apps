.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$7;
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

    .line 930
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$7;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$7;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->access$1600(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    return-void
.end method
