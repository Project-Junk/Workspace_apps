.class final Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;
.super Ljava/lang/Object;
.source "ZenModeEditAutomaticRules.java"

# interfaces
.implements Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    iget-object v1, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    iget-object v1, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/zenmode/b;->b(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)I

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->d()[Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;[Ljava/util/Map$Entry;)[Ljava/util/Map$Entry;

    .line 145
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->d(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->notifyDataSetChanged()V

    .line 146
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b()V

    .line 147
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a()V

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->e(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 150
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->finish()V

    :cond_3
    return v0
.end method
