.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private final synthetic f$1:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;->f$1:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;->f$1:Landroid/content/ContentValues;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->lambda$notifyBackFingerUnlock$5$PictorialMediator(Landroid/content/ContentValues;)V

    return-void
.end method