.class final Lcom/android/settings/datausage/DataUsageList$3;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$3;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 413
    check-cast p1, Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 1082
    iget-object p1, p1, Lcom/android/settings/datausage/AppDataUsagePreference;->a:Lcom/android/settingslib/a;

    .line 415
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$3;->a:Lcom/android/settings/datausage/DataUsageList;

    .line 1425
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_item"

    .line 1426
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1427
    iget-object p1, v0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    const-string v2, "network_template"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1428
    iget-object p1, v0, Lcom/android/settings/datausage/DataUsageList;->h:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 1429
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/android/settings/datausage/DataUsageList;->h:Ljava/util/ArrayList;

    .line 1430
    iget-object p1, v0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/c;

    .line 1431
    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1432
    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->h:Ljava/util/ArrayList;

    .line 2036
    iget-wide v4, v2, Lcom/android/settingslib/net/d;->d:J

    .line 1432
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_0
    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->h:Ljava/util/ArrayList;

    .line 3032
    iget-wide v4, v2, Lcom/android/settingslib/net/d;->c:J

    .line 1434
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1437
    :cond_1
    iget-object p1, v0, Lcom/android/settings/datausage/DataUsageList;->h:Ljava/util/ArrayList;

    const-string v2, "network_cycles"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1438
    iget-object p1, v0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    .line 1439
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/c;

    .line 3036
    iget-wide v2, p1, Lcom/android/settingslib/net/d;->d:J

    const-string p1, "selected_cycle"

    .line 1438
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1441
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/AppDataUsage;

    .line 1442
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v2, 0x0

    const v3, 0x7f1206bf

    .line 3063
    invoke-virtual {p1, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 1444
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 1445
    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 1446
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
