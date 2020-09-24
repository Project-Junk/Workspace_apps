.class final Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$5;
.super Ljava/lang/Object;
.source "ColorModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$5;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$5;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->b(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$5;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->c(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Z

    :cond_0
    return-void
.end method
