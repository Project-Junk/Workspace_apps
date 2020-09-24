.class public Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;
.super Ljava/lang/Object;
.source "StackDividerSharedPreferenceHelper.java"


# static fields
.field private static final COLOR_PREFERENCE:Ljava/lang/String; = "com.coloros.systemui.stackdivider"

.field private static sINSTANCE:Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;


# instance fields
.field private mContex:Landroid/content/Context;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mContex:Landroid/content/Context;

    const-string v0, "com.coloros.systemui.stackdivider"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;
    .locals 1

    .line 35
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->sINSTANCE:Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->sINSTANCE:Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;

    .line 38
    :cond_0
    sget-object p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->sINSTANCE:Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public getBooleanPref(Ljava/lang/String;Z)Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIntPref(Ljava/lang/String;I)I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLongPref(Ljava/lang/String;J)J
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public putBooleanPref(Ljava/lang/String;Z)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putIntPref(Ljava/lang/String;I)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putLongPref(Ljava/lang/String;J)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerSharedPreferenceHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
