.class public Lcom/coloros/systemui/aod/focusmode/FocusUtils;
.super Ljava/lang/Object;
.source "FocusUtils.java"


# static fields
.field private static final DISPLAY_SCALE_VALUE:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2pixel(Landroid/content/Context;F)I
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static isInFocus(Landroid/content/Context;)Z
    .locals 8

    .line 37
    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->isInLockTask(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.coloros.focusmode.provider/focus_data"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "is_in_focus"

    .line 42
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 43
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    :cond_2
    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 49
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_3
    throw p0

    :cond_4
    :goto_2
    return v1
.end method

.method private static isInLockTask(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static isShowFocusClock(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "focusmode_screen_off_clock"

    .line 29
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static resetFocusClock(Landroid/content/Context;)V
    .locals 2

    const-string v0, "focusmode_screen_off_clock"

    const/4 v1, 0x0

    .line 33
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
