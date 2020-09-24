.class public Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;
.super Landroidx/fragment/app/ListFragment;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;,
        Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;,
        Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$a;,
        Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$d;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/SimpleAdapter;

.field private c:Landroid/widget/SimpleAdapter;

.field private d:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$d;

.field private e:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 4

    .line 160
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 164
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "id"

    .line 165
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;)Landroid/widget/ListView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 14

    const-string v0, "gmt"

    const-string v1, "name"

    .line 1132
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 1133
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v4, "offset"

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object p1, v4

    .line 1136
    :goto_0
    new-instance v5, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;

    invoke-direct {v5, p1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$b;-><init>(Ljava/lang/String;)V

    .line 1137
    new-instance p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;

    invoke-direct {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;-><init>()V

    .line 1399
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1400
    iget-object v8, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->b:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1402
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 1403
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1404
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1405
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1406
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1407
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1408
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1409
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1419
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 1425
    iget-object v12, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->b:Ljava/util/HashSet;

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1427
    iget-object v12, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1428
    iget-object v12, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->d:Ljava/text/SimpleDateFormat;

    iget-object v13, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->c:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 1431
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1432
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v12

    .line 1433
    invoke-virtual {v12}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v12

    .line 1434
    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1437
    :goto_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_5

    :cond_3
    move-object v9, v12

    .line 1441
    :goto_5
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v13, "id"

    .line 1442
    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    invoke-virtual {v12, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    invoke-static {v11}, Lcom/coloros/settings/utils/l;->a(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v9, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->c:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v9, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->a:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1413
    :cond_5
    iget-object p1, p1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$c;->a:Ljava/util/List;

    .line 1139
    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1140
    new-instance v0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$a;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$a;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[I)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->b:Landroid/widget/SimpleAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->c:Landroid/widget/SimpleAdapter;

    .line 269
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a:Z

    .line 271
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result p1

    if-lez p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 274
    new-instance v1, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 284
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->setSelection(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 185
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    .line 188
    invoke-static {p1, v0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->b:Landroid/widget/SimpleAdapter;

    const/4 v1, 0x1

    .line 189
    invoke-static {p1, v1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->c:Landroid/widget/SimpleAdapter;

    .line 192
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Z)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 511
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 513
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 514
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f121bcf

    .line 227
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108009c

    .line 228
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f121bd0

    .line 229
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08073f

    .line 230
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 231
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    const v0, 0x7f0d00b6

    .line 202
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f120721

    .line 204
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(I)V

    const/4 v0, 0x1

    .line 205
    invoke-static {p2, p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 206
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a020e

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x102000a

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    .line 217
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 218
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    invoke-static {p2}, Lcom/coloros/settings/utils/al;->X(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 219
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 1519
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 1520
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070582

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1521
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0703ee

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 1522
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    .line 1523
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v0

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    .line 1522
    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1524
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->e:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    :cond_2
    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 454
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->isResumed()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "id"

    .line 462
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "alarm"

    .line 466
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 467
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 468
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 469
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->d:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$d;

    if-nez p1, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    .line 250
    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Z)V

    return v1

    .line 254
    :cond_1
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Z)V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 236
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 240
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 241
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
