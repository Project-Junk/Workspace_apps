.class final Lcom/android/settings/applications/manageapplications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 2

    .line 1721
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;B)V

    return-object v0
.end method
