.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;->f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;->f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;->f$0:Lcom/android/settings/applications/RecentAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;->f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/applications/RecentAppsPreferenceController;->lambda$createAppEntity$1$RecentAppsPreferenceController(Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/view/View;)V

    return-void
.end method
