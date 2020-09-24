.class public Lcom/android/settings/homepage/contextualcards/slices/b;
.super Ljava/lang/Object;
.source "SliceContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/android/settings/homepage/contextualcards/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    return-void
.end method

.method private synthetic d(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/a;->a(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/a;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 3216
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3217
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    .line 3218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "card_dismissed"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3220
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "cards"

    const-string v4, "name=?"

    .line 3221
    invoke-virtual {v0, p1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3223
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic lambda$6l6VyY_FG_VIFNAVJu7-mNuIhBE(Lcom/android/settings/homepage/contextualcards/slices/b;Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/b;->d(Lcom/android/settings/homepage/contextualcards/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/settings/homepage/contextualcards/h;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->b:Lcom/android/settings/homepage/contextualcards/h;

    return-void
.end method

.method public final b(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/android/settings/homepage/contextualcards/b;)V
    .locals 6

    .line 70
    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$b$6l6VyY_FG_VIFNAVJu7-mNuIhBE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$b$6l6VyY_FG_VIFNAVJu7-mNuIhBE;-><init>(Lcom/android/settings/homepage/contextualcards/slices/b;Lcom/android/settings/homepage/contextualcards/b;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1091
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    const v1, 0x7f1205ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1095
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    const-class v4, Lcom/android/settings/homepage/contextualcards/ContextualCardFeedbackDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1109
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/b;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1110
    array-length v4, v3

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    const-string v3, "card_name"

    .line 1096
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "feedback_email"

    .line 1098
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1099
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1100
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    .line 77
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/b;->a:Landroid/content/Context;

    const/16 v2, 0x681

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2090
    iget-object v4, p1, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    .line 1185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    .line 1186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    iget-wide v4, p1, Lcom/android/settings/homepage/contextualcards/b;->b:D

    .line 1187
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
