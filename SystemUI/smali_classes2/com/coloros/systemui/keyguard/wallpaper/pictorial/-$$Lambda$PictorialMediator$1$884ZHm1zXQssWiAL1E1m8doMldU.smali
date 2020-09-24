.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$884ZHm1zXQssWiAL1E1m8doMldU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$884ZHm1zXQssWiAL1E1m8doMldU;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$1$884ZHm1zXQssWiAL1E1m8doMldU;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;->lambda$handleMessage$1(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V

    return-void
.end method
