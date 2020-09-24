.class final Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ColorChooseLockPatternFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$2;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$2;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    return-void
.end method
