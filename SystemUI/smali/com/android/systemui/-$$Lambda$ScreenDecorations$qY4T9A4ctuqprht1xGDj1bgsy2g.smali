.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$qY4T9A4ctuqprht1xGDj1bgsy2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$qY4T9A4ctuqprht1xGDj1bgsy2g;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$qY4T9A4ctuqprht1xGDj1bgsy2g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$qY4T9A4ctuqprht1xGDj1bgsy2g;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$qY4T9A4ctuqprht1xGDj1bgsy2g;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations;->lambda$handleNavigationModeChange$1$ScreenDecorations(I)V

    return-void
.end method
