.class public Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "FixedOffsetPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "fixed_offset"


# instance fields
.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fixed_offset"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1068
    :cond_0
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    .line 1076
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121bce

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    .line 2076
    iget-object v5, v5, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 44
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/b;->a(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneInfo()Lcom/android/settings/datetime/timezone/c;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    return-object v0
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/c;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/FixedOffsetPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/c;

    return-void
.end method
