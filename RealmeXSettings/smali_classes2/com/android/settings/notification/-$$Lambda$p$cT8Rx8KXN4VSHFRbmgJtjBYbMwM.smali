.class public final synthetic Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/p;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/p;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;->f$0:Lcom/android/settings/notification/p;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;->f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;->f$0:Lcom/android/settings/notification/p;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/-$$Lambda$p$cT8Rx8KXN4VSHFRbmgJtjBYbMwM;->f$2:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/notification/p;->lambda$cT8Rx8KXN4VSHFRbmgJtjBYbMwM(Lcom/android/settings/notification/p;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
