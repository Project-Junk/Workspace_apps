.class public Lcom/coloros/settings/privacy/PrivacyStateProvider;
.super Landroid/content/ContentProvider;
.source "PrivacyStateProvider.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "state_result"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/coloros/settings/privacy/PrivacyStateProvider;->a:[Ljava/lang/String;

    const-string v1, "content://com.oppo.settings.privacy.PrivacyStateProvider/state_result"

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/coloros/settings/privacy/PrivacyStateProvider;->b:Landroid/net/Uri;

    .line 31
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 34
    sput-object v1, Lcom/coloros/settings/privacy/PrivacyStateProvider;->c:Landroid/content/UriMatcher;

    const-string v2, "com.oppo.settings.privacy.PrivacyStateProvider"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/coloros/settings/privacy/PrivacyStateProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "vnd.android.cursor.dir/state_result"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 56
    sget-object p2, Lcom/coloros/settings/privacy/PrivacyStateProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1067
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacyStateProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1068
    new-instance p2, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {p2, p1}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    .line 1069
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p3, Lcom/coloros/settings/privacy/PrivacyStateProvider;->a:[Ljava/lang/String;

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1070
    sget-object p3, Lcom/coloros/settings/privacy/PrivacyStateProvider;->a:[Ljava/lang/String;

    array-length p3, p3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 1071
    invoke-virtual {p2}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p2

    iget p2, p2, Lcom/coloros/settings/privacy/a/g$d;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    .line 1072
    invoke-virtual {p1, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
