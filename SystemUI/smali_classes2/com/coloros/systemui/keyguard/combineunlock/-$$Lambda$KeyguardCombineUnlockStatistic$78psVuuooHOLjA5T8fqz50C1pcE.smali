.class public final synthetic Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;->f$0:I

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;->f$0:I

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockStatistic;->lambda$collectDataOfCombineUnlockResult$0(ILandroid/content/Context;)V

    return-void
.end method
