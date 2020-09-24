.class public abstract Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;
.super Landroid/content/ContentProvider;
.source "ColorSearchIndexablesProvider.java"


# static fields
.field private static final MATCH_NON_INDEXABLE_KEYS_CODE:I = 0x3

.field private static final MATCH_RAW_CODE:I = 0x2

.field private static final MATCH_RES_CODE:I = 0x1

.field private static final MATCH_SITE_MAP_PAIRS_CODE:I = 0x4

.field public static final READ_SEARCH_INDEXABLES:Ljava/lang/String; = "android.permission.READ_SEARCH_INDEXABLES"

.field private static final TAG:Ljava/lang/String; = "IndexablesProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .line 82
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 85
    iget-object v0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/indexables_xml_res"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/indexables_raw"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/non_indexables_key"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "settings/site_map_pairs"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_2

    .line 98
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must be protected by READ_SEARCH_INDEXABLES"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must grantUriPermissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Provider must be exported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 196
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Delete not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 171
    iget-object p0, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "vnd.android.cursor.dir/non_indexables_key"

    return-object p0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/indexables_raw"

    return-object p0

    :cond_2
    const-string p0, "vnd.android.cursor.dir/indexables_xml_res"

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 188
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insert not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 111
    iget-object p2, p0, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->querySiteMapPairs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_1
    invoke-virtual {p0, p4}, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    invoke-virtual {p0, p4}, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->queryRawData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 113
    :cond_3
    invoke-virtual {p0, p4}, Lcom/color/settingslib/provider/ColorSearchIndexablesProvider;->queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public abstract queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 205
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
