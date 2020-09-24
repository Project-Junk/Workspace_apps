.class final Lcom/coloros/settings/privacy/ChoosePatternPrivacy$1;
.super Ljava/lang/Object;
.source "ChoosePatternPrivacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChoosePatternPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$1;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChoosePatternPrivacy$1;->a:Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;->a(Lcom/coloros/settings/privacy/ChoosePatternPrivacy;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    return-void
.end method
