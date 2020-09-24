.class public final synthetic Lcom/coloros/settings/feature/zenmode/-$$Lambda$SofqSbmkWUvzgk7BgJev8VKOLfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/-$$Lambda$SofqSbmkWUvzgk7BgJev8VKOLfM;->f$0:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/-$$Lambda$SofqSbmkWUvzgk7BgJev8VKOLfM;->f$0:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
