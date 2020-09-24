.class final Lcom/android/settings/applications/AppPermissionsPreferenceController$1;
.super Lcom/android/settingslib/applications/d$a;
.source "AppPermissionsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppPermissionsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppPermissionsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppPermissionsPreferenceController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController$1;->a:Lcom/android/settings/applications/AppPermissionsPreferenceController;

    invoke-direct {p0}, Lcom/android/settingslib/applications/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController$1;->a:Lcom/android/settings/applications/AppPermissionsPreferenceController;

    invoke-virtual {p1, p4}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->updateSummary(Ljava/util/List;)V

    return-void
.end method
