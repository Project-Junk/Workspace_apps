.class final Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;
.super Ljava/lang/Object;
.source "ZenModeAddRulesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$1;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
