.class public final synthetic Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$t31z0YzfTBejtu3-rzxEhBAK4Ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$t31z0YzfTBejtu3-rzxEhBAK4Ec;->f$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$t31z0YzfTBejtu3-rzxEhBAK4Ec;->f$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->clearTexts()V

    return-void
.end method
