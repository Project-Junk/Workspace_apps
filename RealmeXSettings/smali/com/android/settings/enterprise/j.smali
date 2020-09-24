.class public final Lcom/android/settings/enterprise/j;
.super Lcom/android/settings/enterprise/b;
.source "BugReportsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/settings/enterprise/j;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->f()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bug_reports"

    return-object v0
.end method
