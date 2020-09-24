.class public Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;
.super Landroid/content/ContentProvider;
.source "FingerprintProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.settings.fingerprint"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final FINGERPRINT_PREFERENCE:Ljava/lang/String; = "fingerprint_preference"

.field private static final FINGER_PRINTS:I = 0x1

.field private static final FINGER_PRINTS_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.android.settings.fingerprint/fingerprints"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 44
    sput-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.fingerprint"

    const-string v2, "fingerprints"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "fingerprints/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
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

    .line 65
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "vnd.android.cursor.item/fingerprints"

    return-object p1

    :cond_1
    const-string p1, "vnd.android.cursor.dir/fingerprints"

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p3, "fingerprint_preference"

    .line 101
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "fingerprint_encrypt"

    .line 102
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setAppEncryptApply(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "fingerprint_security_verify"

    .line 104
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setSecurityApply(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
