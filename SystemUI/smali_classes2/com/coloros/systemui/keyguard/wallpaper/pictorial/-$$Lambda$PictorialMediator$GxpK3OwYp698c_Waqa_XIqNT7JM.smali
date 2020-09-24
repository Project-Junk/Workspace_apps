.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iput p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;->f$0:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->lambda$obtainPictorialMessageViewInfo$3$PictorialMediator(I)V

    return-void
.end method
