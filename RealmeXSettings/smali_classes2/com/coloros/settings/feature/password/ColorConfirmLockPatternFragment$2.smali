.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ColorConfirmLockPatternFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$2;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$2;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    return-void
.end method
