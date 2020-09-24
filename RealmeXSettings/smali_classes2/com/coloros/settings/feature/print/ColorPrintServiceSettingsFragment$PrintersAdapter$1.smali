.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;
.super Landroid/widget/Filter;
.source "ColorPrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 325
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 326
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 327
    monitor-exit v0

    return-object p1

    .line 329
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 332
    iget-object v3, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v3}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 334
    iget-object v5, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v5}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 335
    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 336
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 337
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_2
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 341
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 342
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {v1, p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 351
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-nez p2, :cond_0

    .line 353
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->b(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 356
    iget-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-static {p2}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 358
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
