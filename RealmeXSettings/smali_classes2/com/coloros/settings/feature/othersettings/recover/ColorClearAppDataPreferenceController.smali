.class public Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorClearAppDataPreferenceController.java"


# static fields
.field private static final FILE_URI:Landroid/net/Uri;

.field private static final IMAGE_DELETED:Ljava/lang/String; = "image_deleted"

.field public static final KEY_CLEAR_ALL_APP_DATA:Ljava/lang/String; = "clear_all_app_data"

.field private static final TAG:Ljava/lang/String; = "ColorClearAppDataPreferenceController"


# instance fields
.field private final mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.coloros.encyptionserver/file"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->FILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/h;)V
    .locals 1

    const-string v0, "clear_all_app_data"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    return-void
.end method

.method private hasPrivateSpaceData(Landroid/content/Context;)Z
    .locals 7

    const-string v3, "image_deleted=0"

    const/4 v6, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->FILE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    if-eqz v6, :cond_0

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "ColorClearAppDataPreferenceController"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    :goto_2
    if-eqz v6, :cond_3

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_3
    throw p1
.end method

.method private showClearPrivateSpaceDialog(Landroid/content/Context;)V
    .locals 2

    .line 87
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1303b1

    invoke-direct {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1215fd

    .line 88
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$ColorClearAppDataPreferenceController$JwkpZQHVOigg6grfuD1QV37HFSE;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$ColorClearAppDataPreferenceController$JwkpZQHVOigg6grfuD1QV37HFSE;-><init>(Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;Landroid/content/Context;)V

    const p1, 0x7f1215fe

    .line 89
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$ColorClearAppDataPreferenceController$YBNhGQ03mbDSDteze88tf8KnGiM;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$ColorClearAppDataPreferenceController$YBNhGQ03mbDSDteze88tf8KnGiM;-><init>(Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;)V

    const v1, 0x7f12124f

    .line 91
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method private startFileSafeActivity(Landroid/content/Context;)V
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.filemanager.FILE_SAFE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f01006b

    const v1, 0x7f010074

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clear_all_app_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->hasPrivateSpaceData(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->showClearPrivateSpaceDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/b;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/recover/b;-><init>()V

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/h;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$showClearPrivateSpaceDialog$0$ColorClearAppDataPreferenceController(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->startFileSafeActivity(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$showClearPrivateSpaceDialog$1$ColorClearAppDataPreferenceController(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/ColorClearAppDataPreferenceController;->mResetHost:Lcom/coloros/settings/feature/othersettings/recover/h;

    new-instance p2, Lcom/coloros/settings/feature/othersettings/recover/b;

    invoke-direct {p2}, Lcom/coloros/settings/feature/othersettings/recover/b;-><init>()V

    invoke-interface {p1, p2}, Lcom/coloros/settings/feature/othersettings/recover/h;->a(Lcom/coloros/settings/feature/othersettings/recover/j;)V

    return-void
.end method
