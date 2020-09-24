.class public final Lcom/coloros/settings/feature/othersettings/accessibility/c;
.super Ljava/lang/Object;
.source "ScreenReaderWhiteListParser.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 40
    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a:Ljava/util/Set;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a:Ljava/util/Set;

    const-string v1, "com.bjbyhd.voiceback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a:Ljava/util/Set;

    const-string v1, "com.dianming.phoneapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a:Ljava/util/Set;

    const-string v1, "com.lvtech.ydserver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a:Ljava/util/Set;

    const-string v1, "com.nirenr.talkman"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sys_systemui_hightlight_whitelist"

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 88
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/c;->a:Ljava/util/Set;

    const-string v1, "screen_reader_white_list"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
