.class public Lcom/android/sdk/LocalePicker;
.super Landroidx/fragment/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sdk/LocalePicker$a;,
        Lcom/android/sdk/LocalePicker$b;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field protected a:Lcom/android/sdk/LocalePicker$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "en-XA"

    const-string v1, "ar-XB"

    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sdk/LocalePicker;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 217
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 220
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    aget-object p0, p2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 236
    invoke-virtual {p0}, Lcom/android/sdk/LocalePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "locale_picker_item"

    .line 1174
    invoke-static {v1, v0}, Lcom/android/settingslib/m/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const-string v0, "localeo"

    .line 1175
    invoke-static {v1, v0}, Lcom/android/settingslib/m/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 1179
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    .line 2105
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3096
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v4

    .line 2108
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2109
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2111
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v4, "special_locale_codes"

    .line 2113
    invoke-static {v1, v4}, Lcom/android/settingslib/m/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 2112
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string v8, "special_locale_names"

    .line 2115
    invoke-static {v1, v8}, Lcom/android/settingslib/m/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 2114
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2117
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v10, 0x5f

    const/16 v11, 0x2d

    .line 2119
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2120
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "und"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2121
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    if-nez v2, :cond_2

    .line 2125
    invoke-static {v9}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2129
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2133
    new-instance v10, Lcom/android/sdk/LocalePicker$a;

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/sdk/LocalePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcom/android/sdk/LocalePicker$a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2139
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/sdk/LocalePicker$a;

    .line 2140
    iget-object v11, v10, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v10, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 2141
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "zz"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2146
    iget-object v11, v10, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    invoke-static {v11, v4, v0}, Lcom/android/sdk/LocalePicker;->a(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/sdk/LocalePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    .line 2152
    new-instance v10, Lcom/android/sdk/LocalePicker$a;

    .line 2153
    invoke-static {v9, v4, v0}, Lcom/android/sdk/LocalePicker;->a(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2152
    invoke-static {v11}, Lcom/android/sdk/LocalePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcom/android/sdk/LocalePicker$a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2155
    :cond_4
    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/sdk/LocalePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2159
    new-instance v11, Lcom/android/sdk/LocalePicker$a;

    invoke-direct {v11, v10, v9}, Lcom/android/sdk/LocalePicker$a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2164
    :cond_5
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v0, "layout_inflater"

    .line 1184
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1185
    new-instance v9, Lcom/android/sdk/LocalePicker$1;

    move-object v0, v9

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/sdk/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    .line 237
    invoke-virtual {p0, v9}, Lcom/android/sdk/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final a(Lcom/android/sdk/LocalePicker$b;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/sdk/LocalePicker;->a:Lcom/android/sdk/LocalePicker$b;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/sdk/LocalePicker;->a()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/android/sdk/LocalePicker;->a:Lcom/android/sdk/LocalePicker$b;

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/sdk/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/sdk/LocalePicker$a;

    iget-object p1, p1, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    .line 261
    iget-object p2, p0, Lcom/android/sdk/LocalePicker;->a:Lcom/android/sdk/LocalePicker$b;

    invoke-interface {p2, p1}, Lcom/android/sdk/LocalePicker$b;->a(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 247
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/android/sdk/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method
