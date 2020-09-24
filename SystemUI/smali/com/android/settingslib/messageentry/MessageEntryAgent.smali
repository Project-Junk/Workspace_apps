.class public Lcom/android/settingslib/messageentry/MessageEntryAgent;
.super Ljava/lang/Object;
.source "MessageEntryAgent.java"


# static fields
.field private static final MESSAGE_ENTRY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.settings.outward.provider/message_entries"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/messageentry/MessageEntryAgent;->MESSAGE_ENTRY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMessage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settingslib/messageentry/MessageEntryAgent;->MESSAGE_ENTRY_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "package_name = ?"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static deleteMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/messageentry/MessageEntryAgent;->MESSAGE_ENTRY_URI:Landroid/net/Uri;

    const-string p2, "message_id = ? AND package_name = ?"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static fromMessageEntry(Lcom/android/settingslib/messageentry/MessageEntry;)Landroid/content/ContentValues;
    .locals 3

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getMsgId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getTitleResName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title_res_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getDisplayOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "display_order"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getTargetAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry;->getEntrancePath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "entrance_path"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static queryMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 65
    sget-object v0, Lcom/android/settingslib/messageentry/MessageEntryAgent;->MESSAGE_ENTRY_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static sendMessage(Landroid/content/Context;Lcom/android/settingslib/messageentry/MessageEntry;)Landroid/net/Uri;
    .locals 1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/settingslib/messageentry/MessageEntryAgent;->MESSAGE_ENTRY_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntryAgent;->fromMessageEntry(Lcom/android/settingslib/messageentry/MessageEntry;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
