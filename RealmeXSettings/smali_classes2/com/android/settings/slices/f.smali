.class final Lcom/android/settings/slices/f;
.super Ljava/lang/Object;
.source "SliceDataConverter.java"


# instance fields
.field private final a:Lcom/android/settingslib/core/instrumentation/d;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/f;->a:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/e;",
            ">;"
        }
    .end annotation

    const-string v0, "SliceDataConverter"

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    .line 161
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 164
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 169
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreferenceScreen"

    .line 170
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 177
    iget-object v5, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/settings/core/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 182
    iget-object v5, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    const/16 v6, 0x8fe

    invoke-static {v5, p1, v6}, Lcom/android/settings/core/e;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "controller"

    .line 196
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "key"

    .line 201
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    .line 202
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "summary"

    .line 203
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon"

    .line 204
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 205
    iget-object v10, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    .line 1119
    invoke-static {v10, v2, v6}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/a;

    move-result-object v10

    .line 1121
    invoke-virtual {v10}, Lcom/android/settings/core/a;->getSliceType()I

    move-result v10

    const-string v11, "platform_slice"

    .line 207
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "unavailable_slice_subtitle"

    .line 208
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    new-instance v12, Lcom/android/settings/slices/e$a;

    invoke-direct {v12}, Lcom/android/settings/slices/e$a;-><init>()V

    .line 1181
    iput-object v6, v12, Lcom/android/settings/slices/e$a;->a:Ljava/lang/String;

    .line 1186
    iput-object v7, v12, Lcom/android/settings/slices/e$a;->b:Ljava/lang/String;

    .line 1191
    iput-object v8, v12, Lcom/android/settings/slices/e$a;->c:Ljava/lang/String;

    .line 1206
    iput v9, v12, Lcom/android/settings/slices/e$a;->f:I

    .line 2196
    iput-object v4, v12, Lcom/android/settings/slices/e$a;->d:Ljava/lang/CharSequence;

    .line 2211
    iput-object v2, v12, Lcom/android/settings/slices/e$a;->i:Ljava/lang/String;

    .line 2216
    iput-object p2, v12, Lcom/android/settings/slices/e$a;->g:Ljava/lang/String;

    .line 2226
    iput v10, v12, Lcom/android/settings/slices/e$a;->j:I

    .line 2231
    iput-boolean v11, v12, Lcom/android/settings/slices/e$a;->k:Z

    .line 2237
    iput-object v5, v12, Lcom/android/settings/slices/e$a;->l:Ljava/lang/String;

    .line 222
    invoke-virtual {v12}, Lcom/android/settings/slices/e$a;->a()Lcom/android/settings/slices/e;

    move-result-object v5

    .line 224
    iget-object v6, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    .line 225
    invoke-static {v6, v5}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Lcom/android/settings/slices/e;)Lcom/android/settings/core/a;

    move-result-object v6

    .line 228
    invoke-virtual {v6}, Lcom/android/settings/core/a;->isSliceable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/settings/core/a;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    goto :goto_2

    .line 171
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "XML document must start with <PreferenceScreen> tag; found"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/android/settings/slices/e$b; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    const-string v4, "Get slice data from XML failed "

    .line 247
    invoke-static {v0, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    iget-object v5, p0, Lcom/android/settings/slices/f;->a:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v6, 0x0

    const/16 v7, 0x6bf

    const/4 v8, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    if-eqz v3, :cond_5

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    const-string v2, "Error parsing PreferenceScreen: "

    .line 240
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    iget-object v4, p0, Lcom/android/settings/slices/f;->a:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v5, 0x0

    const/16 v6, 0x6be

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    .line 254
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v6, v2

    move-object v8, v3

    :try_start_2
    const-string v2, "Invalid data when building SliceData for "

    .line 233
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iget-object v2, p0, Lcom/android/settings/slices/f;->a:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v3, 0x0

    const/16 v4, 0x6bd

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_5

    .line 254
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    :goto_3
    return-object v1

    :catchall_1
    move-exception p1

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 255
    :cond_6
    throw p1
.end method

.method private a(Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/e;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    const/4 v2, 0x1

    .line 132
    invoke-interface {p1, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 140
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/SearchIndexableResource;

    .line 141
    iget v1, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provides invalid XML (0) in search provider."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SliceDataConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/settings/slices/f;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/e;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 264
    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    const v4, 0x7f120089

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 267
    new-instance v4, Lcom/android/settings/slices/e$a;

    invoke-direct {v4}, Lcom/android/settings/slices/e$a;-><init>()V

    .line 3216
    iput-object v2, v4, Lcom/android/settings/slices/e$a;->g:Ljava/lang/String;

    .line 4196
    iput-object v3, v4, Lcom/android/settings/slices/e$a;->d:Ljava/lang/CharSequence;

    .line 4211
    iput-object v1, v4, Lcom/android/settings/slices/e$a;->i:Ljava/lang/String;

    .line 272
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 273
    iget-object v2, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030063

    .line 274
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4311
    iget-object v2, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 4313
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 278
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 279
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 280
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 281
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 282
    new-instance v8, Landroid/content/ComponentName;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 289
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f080699

    .line 5181
    :cond_1
    iput-object v6, v4, Lcom/android/settings/slices/e$a;->a:Ljava/lang/String;

    .line 5186
    iput-object v7, v4, Lcom/android/settings/slices/e$a;->b:Ljava/lang/String;

    .line 5206
    iput v5, v4, Lcom/android/settings/slices/e$a;->f:I

    const/4 v5, 0x1

    .line 5226
    iput v5, v4, Lcom/android/settings/slices/e$a;->j:I

    .line 300
    :try_start_0
    invoke-virtual {v4}, Lcom/android/settings/slices/e$a;->a()Lcom/android/settings/slices/e;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/settings/slices/e$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 302
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid data when building a11y SliceData for "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SliceDataConverter"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/e;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/android/settings/slices/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/search/c;->a()Lcom/android/settingslib/o/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settingslib/o/a;->a()Ljava/util/Collection;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v2}, Lcom/android/settings/search/b;->a(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dose not implement Search Index Provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SliceDataConverter"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/slices/f;->a(Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/slices/f;->b()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
