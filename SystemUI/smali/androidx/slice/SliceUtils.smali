.class public Landroidx/slice/SliceUtils;
.super Ljava/lang/Object;
.source "SliceUtils.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceUtils$SliceParseException;,
        Landroidx/slice/SliceUtils$SliceActionListener;,
        Landroidx/slice/SliceUtils$SerializeOptions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 250
    invoke-static {p1, p0, p2}, Landroidx/slice/SliceXml;->convertToBytes(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 251
    array-length p2, p0

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;
    .locals 8
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const-string v1, "ttl"

    const-string v2, "long"

    const/4 v3, 0x0

    .line 130
    invoke-static {p0, v2, v1, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v5, "millis"

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v5, v1}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    const-string v1, "last_updated"

    .line 136
    invoke-static {p0, v2, v1, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v6

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v5, v1}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_1
    const-string v1, "color"

    const-string v2, "int"

    .line 143
    invoke-static {p0, v2, v1, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v6}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_2
    const-string v1, "layout_direction"

    .line 150
    invoke-static {p0, v2, v1, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 157
    :cond_3
    invoke-static {v3, p0}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->getSliceKeywords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 159
    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 160
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v6}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_4
    const-string v1, "keywords"

    .line 163
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 167
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object p0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 169
    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    :cond_6
    return-object v0
.end method

.method private static doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 4

    const-string v0, "UTF-16"

    .line 319
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 320
    array-length v1, v1

    new-array v1, v1, [B

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 323
    :try_start_0
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    return v3

    .line 326
    :cond_0
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    return v3

    .line 329
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v3
.end method

.method static handleOptions(Landroid/content/Context;Landroidx/slice/SliceItemHolder;Ljava/lang/String;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 4

    .line 204
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x54d081ca

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x5faa95b

    if-eq v0, v1, :cond_1

    const v1, 0x5fb57ca

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_1
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string p0, "Cannot serialize action"

    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_4

    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {p3}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    goto :goto_2

    .line 234
    :cond_5
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_2

    .line 231
    :cond_6
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_2

    .line 229
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_8
    invoke-virtual {p3}, Landroidx/slice/SliceUtils$SerializeOptions;->getActionMode()I

    move-result p2

    if-eqz p2, :cond_9

    .line 223
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    goto :goto_2

    .line 221
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_a
    invoke-virtual {p3}, Landroidx/slice/SliceUtils$SerializeOptions;->getImageMode()I

    move-result p2

    if-eqz p2, :cond_d

    if-eq p2, v3, :cond_c

    if-eq p2, v2, :cond_b

    goto :goto_2

    .line 214
    :cond_b
    iget-object p2, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast p2, Landroidx/core/graphics/drawable/IconCompat;

    invoke-static {p0, p2, p3}, Landroidx/slice/SliceUtils;->convert(Landroid/content/Context;Landroidx/core/graphics/drawable/IconCompat;Landroidx/slice/SliceUtils$SerializeOptions;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    iput-object p0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    goto :goto_2

    .line 211
    :cond_c
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    :goto_2
    return-void

    .line 208
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot serialize icon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/slice/SliceUtils$SliceActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/slice/SliceUtils$SliceParseException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    const-class p1, Landroidx/slice/Slice;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 274
    invoke-static {p1, v0}, Landroidx/slice/SliceUtils;->doesStreamStartWith(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result p1

    .line 275
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    if-eqz p1, :cond_0

    .line 278
    new-instance p1, Landroidx/slice/SliceUtils$2;

    invoke-direct {p1, p3}, Landroidx/slice/SliceUtils$2;-><init>(Landroidx/slice/SliceUtils$SliceActionListener;)V

    .line 284
    sget-object v1, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    new-instance p2, Landroidx/slice/SliceUtils$3;

    invoke-direct {p2, p1, p0}, Landroidx/slice/SliceUtils$3;-><init>(Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;)V

    sput-object p2, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 291
    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroidx/slice/Slice;

    .line 292
    const-class p1, Ljava/lang/String;

    iget-object p2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string p3, "cached"

    invoke-static {p1, p2, p3}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 294
    sput-object p1, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 295
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 298
    :cond_0
    invoke-static {p0, v0, p2, p3}, Landroidx/slice/SliceXml;->parseSlice(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Landroidx/slice/SliceUtils$SliceActionListener;)Landroidx/slice/Slice;

    move-result-object p0

    .line 299
    const-class p1, Ljava/lang/String;

    iget-object p2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string p3, "cached"

    invoke-static {p1, p2, p3}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    return-object p0
.end method

.method public static serializeSlice(Landroidx/slice/Slice;Landroid/content/Context;Ljava/io/OutputStream;Landroidx/slice/SliceUtils$SerializeOptions;)V
    .locals 2
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/slice/SliceUtils$SerializeOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 190
    sget-object v0, Landroidx/slice/SliceItemHolder;->sSerializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    new-instance v1, Landroidx/slice/SliceUtils$1;

    invoke-direct {v1, p1, p3}, Landroidx/slice/SliceUtils$1;-><init>(Landroid/content/Context;Landroidx/slice/SliceUtils$SerializeOptions;)V

    sput-object v1, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 197
    invoke-static {p0, p2}, Landroidx/versionedparcelable/ParcelUtils;->toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V

    const/4 p0, 0x0

    .line 198
    sput-object p0, Landroidx/slice/SliceItemHolder;->sHandler:Landroidx/slice/SliceItemHolder$HolderHandler;

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static setActionsAndUpdateIcons(Landroidx/slice/SliceItemHolder;Landroidx/slice/SliceItem$ActionHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 306
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x54d081ca

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x5faa95b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, -0x1

    :goto_1
    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_3

    goto :goto_2

    .line 313
    :cond_3
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->mCallback:Ljava/lang/Object;

    goto :goto_2

    .line 308
    :cond_4
    iget-object p1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    instance-of p1, p1, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_5

    .line 309
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    check-cast p0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0, p2}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static stripSlice(Landroidx/slice/Slice;IZ)Landroidx/slice/Slice;
    .locals 3
    .param p0    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 89
    new-instance p2, Landroidx/slice/widget/ListContent;

    invoke-direct {p2, p0}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    .line 90
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    invoke-static {p0}, Landroidx/slice/SliceUtils;->copyMetadata(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p2, p1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    check-cast p1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p1, v0}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p0

    :cond_1
    return-object p0

    .line 103
    :cond_2
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 104
    invoke-virtual {p2}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 105
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 106
    new-instance p1, Landroidx/slice/Slice$Builder;

    invoke-direct {p1, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 107
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v1, "actions"

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/core/SliceAction;

    .line 108
    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    .line 109
    check-cast p2, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p2, v1}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    .line 111
    :cond_3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 113
    :cond_4
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    :cond_5
    return-object p0
.end method
