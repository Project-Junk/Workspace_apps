.class final Lcom/android/settings/DateTimeSettings$b;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$b;->a:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$b;->b:Lcom/android/settings/dashboard/f;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$b;->b:Lcom/android/settings/dashboard/f;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$b;->a:Landroid/content/Context;

    .line 169
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 168
    invoke-static {v1, v2, p1}, Lcom/android/settingslib/e/a;->a(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
