.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$u2-DKz75Y1DFKYeQQOCZ63Y1RIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$u2-DKz75Y1DFKYeQQOCZ63Y1RIU;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$u2-DKz75Y1DFKYeQQOCZ63Y1RIU;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$onConfigurationChanged$5$ScreenDecorations()V

    return-void
.end method